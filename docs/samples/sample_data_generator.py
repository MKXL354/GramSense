import random
import re
import json

# ================= CONFIG =================
CYCLES = 3  # 1 cycle = all grammar topics × all levels × all exercise types
MAX_OPTIONS = 4
RANDOM_SEED = 0  # set int for reproducibility
# =========================================

if RANDOM_SEED is not None:
    random.seed(RANDOM_SEED)

GRAMMAR_TOPICS = [
    "PRESENT_SIMPLE",
    "PRESENT_CONTINUOUS",
    "PAST_SIMPLE",
    "PAST_CONTINUOUS",
    "PRESENT_PERFECT",
    "TENSE_CHOICE",
    "CONDITIONAL_FIRST",
    "CONDITIONAL_SECOND",
    "PASSIVE_VOICE",
    "ARTICLES",
    "COMPARISON",
    "GERUND_INFINITIVE",
    "RELATIVE_CLAUSES",
    "REPORTED_SPEECH",
]

LEVELS = ["EASY", "MEDIUM", "HARD"]
EXERCISE_TYPES = ["FILL_BLANK", "MULTIPLE_CHOICE", "FULL_SENTENCE"]

SUBJECTS = [
    "She", "He", "They", "We", "I",
    "You", "My brother", "My sister", "The teacher",
    "The student", "People", "Children", "My parents",
    "His friend", "Her manager"
]

VERBS = [
    "go", "eat", "play", "watch", "read", "write", "make", "take",
    "do", "have", "see", "use", "find", "give", "work", "call",
    "try", "ask", "need", "feel", "become", "leave"
]

NOUNS = [
    "food", "books", "TV", "games", "music", "work",
    "home", "school", "office", "movies", "emails", "reports",
    "lunch", "dinner", "homework", "projects", "friends",
    "customers", "tasks", "meetings"
]

ADVERBS = [
    "usually", "often", "rarely", "sometimes", "never",
    "always", "almost", "already", "early", "late",
    "together", "alone", "daily", "weekly"
]

WORD_RE = re.compile(r"^[A-Za-z0-9_]+$")


def rand_word(pool):
    return random.choice(pool)


def short_sentence(with_blank=False):
    s = rand_word(SUBJECTS)
    v = rand_word(VERBS)
    o = rand_word(NOUNS)

    if with_blank:
        return f"{s} ___ {o}"
    return f"{s} {v}s {o}"


def random_token():
    base = random.choice(VERBS + NOUNS + ADVERBS)
    suffix = random.randint(1, 9)
    token = f"{base}{suffix}"
    return token if WORD_RE.match(token) else "word1"


def make_options(correct=None, numeric=False):
    options = []

    if numeric:
        count = random.randint(3, MAX_OPTIONS)
        for i in range(1, count + 1):
            options.append(f"{i}{random_token()}")
        return options

    while len(options) < random.randint(3, MAX_OPTIONS):
        w = random_token()
        if w not in options:
            options.append(w)

    if correct and correct not in options:
        options[random.randint(0, len(options) - 1)] = correct

    return options


def generate_exercise(grammar, level, ex_type):
    if ex_type == "FILL_BLANK":
        question = short_sentence(with_blank=True)
        correct = "correct"
        options = make_options(correct=correct)

    elif ex_type == "MULTIPLE_CHOICE":
        question = f"Choose the correct form for {rand_word(VERBS)}"
        correct = "correct"
        options = make_options(correct=correct)

    else:  # FULL_SENTENCE
        question = "Write the sentence"

        # Step 1: generate ordered pieces
        piece_count = random.randint(3, MAX_OPTIONS)
        ordered_pieces = [
            f"{i}{random_token()}"
            for i in range(1, piece_count + 1)
        ]

        # Step 2: correct answer = ordered concatenation (numbers stripped)
        correct = " ".join(ordered_pieces)

        # Step 3: shuffle options shown to user
        options = ordered_pieces[:]
        random.shuffle(options)

    return {
        "grammar_topic": grammar,
        "exercise_type": ex_type,
        "grammar_level": level,
        "question": question,
        "correct_answer": correct,
        "options": options,
    }


def sql_escape(s):
    return s.replace("'", "''")


def to_sql(ex):
    json_options = json.dumps(ex["options"], ensure_ascii=False)

    return (
        f"('{ex['grammar_topic']}', "
        f"'{ex['exercise_type']}', "
        f"'{ex['grammar_level']}', "
        f"'{sql_escape(ex['question'])}', "
        f"'{sql_escape(ex['correct_answer'])}', "
        f"'{sql_escape(json_options)}')"
    )



def main():
    rows = []

    for _ in range(CYCLES):
        for grammar in GRAMMAR_TOPICS:
            for level in LEVELS:
                for ex_type in EXERCISE_TYPES:
                    ex = generate_exercise(grammar, level, ex_type)
                    rows.append(to_sql(ex))

    print("INSERT INTO exercises")
    print("(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)")
    print("VALUES")
    print(",\n".join(rows) + ";")


if __name__ == "__main__":
    main()
