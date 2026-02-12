BEGIN;

-- 1. Add user
INSERT INTO grammar_users (username, password, email)
VALUES ('test_user', 'test_pass', 'test_user@gramsense.app');

-- 2. Add examples (EASY, MEDIUM, HARD)
INSERT INTO examples (grammar_topic, grammar_level, sentence, explanation) VALUES
('PRESENT_SIMPLE', 'EASY',
 'She works in an office.',
 'Third-person singular verbs take -s in the present simple.'),

('PRESENT_SIMPLE', 'MEDIUM',
 'They play football every weekend.',
 'Present simple is used for habitual actions.'),

('PRESENT_SIMPLE', 'HARD',
 'He rarely eats fast food.',
 'Adverbs of frequency are commonly used with the present simple.');

-- 3. Add exercises (9 total)
INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('PRESENT_SIMPLE', 'FILL_BLANK', 'EASY',
 'She ___ to school every day',
 'goes',
 '["go", "goes", "goed"]'),

('PRESENT_SIMPLE', 'MULTIPLE_CHOICE', 'EASY',
 'What is the present simple form of drink?',
 'drinks',
 '["drink", "drinks", "drinking"]'),

('PRESENT_SIMPLE', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using she like apples',
 'She likes apples',
 '["likes", "She", "apples"]'),

-- MEDIUM
('PRESENT_SIMPLE', 'FILL_BLANK', 'MEDIUM',
 'They ___ TV after dinner',
 'watch',
 '["watch", "watching", "watches"]'),

('PRESENT_SIMPLE', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'We go to work by bus',
 '["We go to work by bus", "We goes to work by bus", "We going to work by bus"]'),

('PRESENT_SIMPLE', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'He does not play chess',
 '["He", "not", "does", "chess", "play"]'),

-- HARD
('PRESENT_SIMPLE', 'FILL_BLANK', 'HARD',
 'She usually ___ up at 6 am',
 'wakes',
 '["wake", "waking", "wakes"]'),

('PRESENT_SIMPLE', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct form of the verb: How often ___ he travel abroad',
 'does',
 '["do", "does", "is", "has"]'),

('PRESENT_SIMPLE', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'They rarely eat meat',
 '["They", "meat", "eat", "rarely"]');
 
 INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('PRESENT_CONTINUOUS', 'FILL_BLANK', 'EASY',
 'She ___ TV right now',
 'is watching',
 '["watches", "is watching", "watch"]'),

('PRESENT_CONTINUOUS', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'He is reading a book now',
 '["He reads a book now", "He is reading a book now", "He read a book now"]'),

('PRESENT_CONTINUOUS', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using: she / cook / dinner / now',
 'She is cooking dinner now',
 '["She", "is", "cooking", "dinner", "now"]'),

-- MEDIUM
('PRESENT_CONTINUOUS', 'FILL_BLANK', 'MEDIUM',
 'They ___ for the bus at the moment',
 'are waiting',
 '["wait", "are waiting", "waiting"]'),

('PRESENT_CONTINUOUS', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'We are studying for the exam this week',
 '["We study for the exam this week", "We are studying for the exam this week", "We studied for the exam this week"]'),

('PRESENT_CONTINUOUS', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'He is not working today',
 '["He", "is", "not", "working", "today"]'),

-- HARD
('PRESENT_CONTINUOUS', 'FILL_BLANK', 'HARD',
 'She ___ more confident these days',
 'is becoming',
 '["becomes", "is becoming", "became"]'),

('PRESENT_CONTINUOUS', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'They are constantly complaining about work',
 '["They constantly complain about work", "They are constantly complaining about work", "They complained constantly about work"]'),

('PRESENT_CONTINUOUS', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'I am staying with my parents this month',
 '["I", "am", "staying", "with", "my", "parents", "this", "month"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('PAST_SIMPLE', 'FILL_BLANK', 'EASY',
 'She ___ to school yesterday',
 'went',
 '["go", "goes", "went"]'),

('PAST_SIMPLE', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the past simple form of eat',
 'ate',
 '["eat", "eats", "ate"]'),

('PAST_SIMPLE', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using he / play / football / yesterday',
 'He played football yesterday',
 '["He", "played", "football", "yesterday"]'),

-- MEDIUM
('PAST_SIMPLE', 'FILL_BLANK', 'MEDIUM',
 'They ___ the movie last night',
 'watched',
 '["watch", "watched", "watching"]'),

('PAST_SIMPLE', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'We finished the project on time',
 '["We finish the project on time", "We finished the project on time", "We are finishing the project on time"]'),

('PAST_SIMPLE', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'She did not understand the question',
 '["She", "did", "not", "understand", "the", "question"]'),

-- HARD
('PAST_SIMPLE', 'FILL_BLANK', 'HARD',
 'He ___ his wallet while traveling abroad',
 'lost',
 '["lose", "loses", "lost"]'),

('PAST_SIMPLE', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct form of the verb: When ___ you arrive?',
 'did',
 '["do", "did", "were", "have"]'),

('PAST_SIMPLE', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'They rarely spoke about the incident',
 '["They", "rarely", "spoke", "about", "the", "incident"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('PAST_CONTINUOUS', 'FILL_BLANK', 'EASY',
 'She ___ TV when I called her',
 'was watching',
 '["watched", "was watching", "is watching"]'),

('PAST_CONTINUOUS', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'He was sleeping at 10 pm',
 '["He slept at 10 pm", "He was sleeping at 10 pm", "He is sleeping at 10 pm"]'),

('PAST_CONTINUOUS', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using she / read / a book / last night',
 'She was reading a book last night',
 '["She", "was", "reading", "a", "book", "last", "night"]'),

-- MEDIUM
('PAST_CONTINUOUS', 'FILL_BLANK', 'MEDIUM',
 'They ___ football when it started to rain',
 'were playing',
 '["played", "are playing", "were playing"]'),

('PAST_CONTINUOUS', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'We were studying while they were talking',
 '["We studied while they talked", "We were studying while they were talking", "We are studying while they are talking"]'),

('PAST_CONTINUOUS', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'He was not listening to the teacher',
 '["He", "was", "not", "listening", "to", "the", "teacher"]'),

-- HARD
('PAST_CONTINUOUS', 'FILL_BLANK', 'HARD',
 'She ___ about the problem all day yesterday',
 'was thinking',
 '["thought", "was thinking", "is thinking"]'),

('PAST_CONTINUOUS', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'They were constantly arguing during the meeting',
 '["They constantly argued during the meeting", "They were constantly arguing during the meeting", "They argue constantly during the meeting"]'),

('PAST_CONTINUOUS', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'I was working late when the power went out',
 '["I", "was", "working", "late", "when", "the", "power", "went", "out"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('PRESENT_PERFECT', 'FILL_BLANK', 'EASY',
 'She ___ her homework already',
 'has finished',
 '["finished", "has finished", "is finishing"]'),

('PRESENT_PERFECT', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct form',
 'I have seen that movie',
 '["I saw that movie", "I have seen that movie", "I am seeing that movie"]'),

('PRESENT_PERFECT', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using he / visit / Paris',
 'He has visited Paris',
 '["He", "has", "visited", "Paris"]'),

-- MEDIUM
('PRESENT_PERFECT', 'FILL_BLANK', 'MEDIUM',
 'They ___ in this company for five years',
 'have worked',
 '["worked", "are working", "have worked"]'),

('PRESENT_PERFECT', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'We have never tried sushi',
 '["We never tried sushi", "We have never tried sushi", "We are never trying sushi"]'),

('PRESENT_PERFECT', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'She has not completed the report yet',
 '["She", "has", "not", "completed", "the", "report", "yet"]'),

-- HARD
('PRESENT_PERFECT', 'FILL_BLANK', 'HARD',
 'How long ___ you known each other?',
 'have',
 '["do", "did", "have"]'),

('PRESENT_PERFECT', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'He has lived here since 2015',
 '["He lived here since 2015", "He has lived here since 2015", "He is living here since 2015"]'),

('PRESENT_PERFECT', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'I have just finished reading the book',
 '["I", "have", "just", "finished", "reading", "the", "book"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('TENSE_CHOICE', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'She works every day',
 '["She works every day", "She is working every day", "She worked every day"]'),

('TENSE_CHOICE', 'FILL_BLANK', 'EASY',
 'He ___ to school yesterday',
 'He went to school yesterday',
 '["goes", "is going", "went"]'),

('TENSE_CHOICE', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using the correct tense:',
 'They are playing outside now',
 '["They", "are", "playing", "outside", "now"]'),

-- MEDIUM
('TENSE_CHOICE', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'I have finished my work',
 '["I finished my work", "I have finished my work", "I am finishing my work"]'),

('TENSE_CHOICE', 'FILL_BLANK', 'MEDIUM',
 'She ___ TV when I arrived',
 'She was watching TV when I arrived',
 '["watched", "was watching", "is watching"]'),

('TENSE_CHOICE', 'FULL_SENTENCE', 'MEDIUM',
 'Write a correct sentence using the correct tense:',
 'We have lived here for five years',
 '["We", "have", "lived", "here", "for", "five", "years"]'),

-- HARD
('TENSE_CHOICE', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'He had left before the meeting started',
 '["He left before the meeting started", "He had left before the meeting started", "He was leaving before the meeting started"]'),

('TENSE_CHOICE', 'FILL_BLANK', 'HARD',
 'They ___ already ___ dinner when she arrived',
 'They had already eaten dinner when she arrived',
 '["have / eaten", "had / eaten", "were / eating"]'),

('TENSE_CHOICE', 'FULL_SENTENCE', 'HARD',
 'Write a correct sentence using the correct tense:',
 'I will call you when I arrive',
 '["I", "will", "call", "you", "when", "I", "arrive"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('CONDITIONAL_FIRST', 'FILL_BLANK', 'EASY',
 'If it rains, we ___ at home',
 'will stay',
 '["stay", "will stay", "stayed"]'),

('CONDITIONAL_FIRST', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'If you study hard, you will pass the exam',
 '["If you study hard, you pass the exam", "If you study hard, you will pass the exam", "If you studied hard, you will pass the exam"]'),

('CONDITIONAL_FIRST', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using if / she / hurry / catch the bus',
 'If she hurries, she will catch the bus',
 '["If", "she", "hurries", "she", "will", "catch", "the", "bus"]'),

-- MEDIUM
('CONDITIONAL_FIRST', 'FILL_BLANK', 'MEDIUM',
 'If he ___ early, he will meet us',
 'arrives',
 '["arrive", "arrives", "will arrive"]'),

('CONDITIONAL_FIRST', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'If we finish the work early, we will go out',
 '["If we finish the work early, we go out", "If we finished the work early, we will go out", "If we finish the work early, we will go out"]'),

('CONDITIONAL_FIRST', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'If they do not hurry, they will miss the train',
 '["If", "they", "do", "not", "hurry", "they", "will", "miss", "the", "train"]'),

-- HARD
('CONDITIONAL_FIRST', 'FILL_BLANK', 'HARD',
 'If she ___ enough money, she will buy a new car',
 'saves',
 '["save", "saves", "will save"]'),

('CONDITIONAL_FIRST', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'If he does not apologize, she will not forgive him',
 '["If he will not apologize, she will not forgive him", "If he does not apologize, she will not forgive him", "If he did not apologize, she will not forgive him"]'),

('CONDITIONAL_FIRST', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'If you do not leave now, you will be late',
 '["If", "you", "do", "not", "leave", "now", "you", "will", "be", "late"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('CONDITIONAL_SECOND', 'FILL_BLANK', 'EASY',
 'If I ___ more time, I would read more books',
 'had',
 '["have", "had", "will have"]'),

('CONDITIONAL_SECOND', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'If I were rich, I would travel the world',
 '["If I am rich, I would travel the world", "If I were rich, I would travel the world", "If I was rich, I will travel the world"]'),

('CONDITIONAL_SECOND', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using if / he / be / taller / play basketball',
 'If he were taller, he would play basketball',
 '["If", "he", "were", "taller", "he", "would", "play", "basketball"]'),

-- MEDIUM
('CONDITIONAL_SECOND', 'FILL_BLANK', 'MEDIUM',
 'If she ___ harder, she would get better results',
 'studied',
 '["studies", "studied", "would study"]'),

('CONDITIONAL_SECOND', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'If we lived closer, we would visit you more often',
 '["If we live closer, we would visit you more often", "If we lived closer, we would visit you more often", "If we had lived closer, we would visit you more often"]'),

('CONDITIONAL_SECOND', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'If they knew the answer, they would tell us',
 '["If", "they", "knew", "the", "answer", "they", "would", "tell", "us"]'),

-- HARD
('CONDITIONAL_SECOND', 'FILL_BLANK', 'HARD',
 'If I ___ you, I would not accept that offer',
 'were',
 '["was", "were", "am"]'),

('CONDITIONAL_SECOND', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'If he were more careful, he would not make so many mistakes',
 '["If he was more careful, he would not make so many mistakes", "If he were more careful, he would not make so many mistakes", "If he is more careful, he would not make so many mistakes"]'),

('CONDITIONAL_SECOND', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'If I had more experience, I would apply for the job',
 '["If", "I", "had", "more", "experience", "I", "would", "apply", "for", "the", "job"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('PASSIVE_VOICE', 'FILL_BLANK', 'EASY',
 'The letter ___ by John',
 'was written',
 '["wrote", "was written", "is writing"]'),

('PASSIVE_VOICE', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'The cake was made by her',
 '["She made the cake", "The cake was made by her", "The cake is making by her"]'),

('PASSIVE_VOICE', 'FULL_SENTENCE', 'EASY',
 'Write a correct passive sentence using: the room / clean / yesterday',
 'The room was cleaned yesterday',
 '["The", "room", "was", "cleaned", "yesterday"]'),

-- MEDIUM
('PASSIVE_VOICE', 'FILL_BLANK', 'MEDIUM',
 'The report ___ every month',
 'is prepared',
 '["prepares", "is prepared", "was prepared"]'),

('PASSIVE_VOICE', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'The emails are sent automatically',
 '["They send the emails automatically", "The emails are sent automatically", "The emails are sending automatically"]'),

('PASSIVE_VOICE', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'The problem has been solved',
 '["The", "problem", "has", "been", "solved"]'),

-- HARD
('PASSIVE_VOICE', 'FILL_BLANK', 'HARD',
 'The bridge ___ while we were away',
 'was being repaired',
 '["was repaired", "was being repaired", "is being repaired"]'),

('PASSIVE_VOICE', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'The rules must be followed',
 '["The rules must follow", "The rules must be followed", "The rules are must followed"]'),

('PASSIVE_VOICE', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'The decision will be announced tomorrow',
 '["The", "decision", "will", "be", "announced", "tomorrow"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('ARTICLES', 'FILL_BLANK', 'EASY',
 'She has ___ apple',
 'an',
 '["a", "an", "the"]'),

('ARTICLES', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'I saw a dog in the park',
 '["I saw dog in the park", "I saw a dog in the park", "I saw the dog in park"]'),

('ARTICLES', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using: a / cat / sleeping',
 'A cat is sleeping',
 '["A", "cat", "is", "sleeping"]'),

-- MEDIUM
('ARTICLES', 'FILL_BLANK', 'MEDIUM',
 'He is ___ engineer',
 'an',
 '["a", "an", "the"]'),

('ARTICLES', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'The sun rises in the east',
 '["A sun rises in the east", "The sun rises in the east", "Sun rises in east"]'),

('ARTICLES', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'She bought a book yesterday',
 '["She", "bought", "a", "book", "yesterday"]'),

-- HARD
('ARTICLES', 'FILL_BLANK', 'HARD',
 'He plays ___ piano very well',
 'the',
 '["a", "an", "the"]'),

('ARTICLES', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'Life is unpredictable',
 '["The life is unpredictable", "Life is unpredictable", "A life is unpredictable"]'),

('ARTICLES', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'She went to school by bus',
 '["She", "went", "to", "school", "by", "bus"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('COMPARISON', 'FILL_BLANK', 'EASY',
 'My house is ___ than yours',
 'bigger',
 '["big", "bigger", "biggest"]'),

('COMPARISON', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'This book is cheaper than that one',
 '["This book is cheap than that one", "This book is cheaper than that one", "This book is the cheapest than that one"]'),

('COMPARISON', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using: cats / faster / dogs',
 'Cats are faster than dogs',
 '["Cats", "are", "faster", "than", "dogs"]'),

-- MEDIUM
('COMPARISON', 'FILL_BLANK', 'MEDIUM',
 'Today is ___ than yesterday',
 'hotter',
 '["hot", "hotter", "hottest"]'),

('COMPARISON', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'English is more difficult than Spanish',
 '["English is difficult than Spanish", "English is more difficult than Spanish", "English is the most difficult than Spanish"]'),

('COMPARISON', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'This problem is easier than the last one',
 '["This", "problem", "is", "easier", "than", "the", "last", "one"]'),

-- HARD
('COMPARISON', 'FILL_BLANK', 'HARD',
 'She is the ___ student in the class',
 'best',
 '["better", "best", "good"]'),

('COMPARISON', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'This is the most interesting movie I have seen',
 '["This is the more interesting movie I have seen", "This is the most interesting movie I have seen", "This is the interestingest movie I have seen"]'),

('COMPARISON', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'He is less confident than before',
 '["He", "is", "less", "confident", "than", "before"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('GERUND_INFINITIVE', 'FILL_BLANK', 'EASY',
 'I enjoy ___ books in my free time',
 'reading',
 '["read", "reading", "to read"]'),

('GERUND_INFINITIVE', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'She likes watching movies',
 '["She likes watch movies", "She likes watching movies", "She likes to watching movies"]'),

('GERUND_INFINITIVE', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using: enjoy / swim',
 'I enjoy swimming',
 '["I", "enjoy", "swimming"]'),

-- MEDIUM
('GERUND_INFINITIVE', 'FILL_BLANK', 'MEDIUM',
 'He decided ___ early',
 'to leave',
 '["leave", "leaving", "to leave"]'),

('GERUND_INFINITIVE', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'They agreed to meet later',
 '["They agreed meeting later", "They agreed to meet later", "They agree meet later"]'),

('GERUND_INFINITIVE', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'She avoided talking to him',
 '["She", "avoided", "talking", "to", "him"]'),

-- HARD
('GERUND_INFINITIVE', 'FILL_BLANK', 'HARD',
 'I am used to ___ up early',
 'waking',
 '["wake", "waking", "to wake"]'),

('GERUND_INFINITIVE', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'He forgot to lock the door',
 '["He forgot locking the door", "He forgot to lock the door", "He forget locking the door"]'),

('GERUND_INFINITIVE', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'They stopped smoking last year',
 '["They", "stopped", "smoking", "last", "year"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('RELATIVE_CLAUSES', 'FILL_BLANK', 'EASY',
 'This is the man ___ lives next door',
 'who',
 '["who", "which", "where"]'),

('RELATIVE_CLAUSES', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct sentence',
 'This is the book that I like',
 '["This is the book who I like", "This is the book that I like", "This is the book where I like"]'),

('RELATIVE_CLAUSES', 'FULL_SENTENCE', 'EASY',
 'Write a correct sentence using: girl / who / sings',
 'She is the girl who sings',
 '["She", "is", "the", "girl", "who", "sings"]'),

-- MEDIUM
('RELATIVE_CLAUSES', 'FILL_BLANK', 'MEDIUM',
 'I know a place ___ we can relax',
 'where',
 '["who", "which", "where"]'),

('RELATIVE_CLAUSES', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct sentence',
 'He is the teacher who helped me',
 '["He is the teacher which helped me", "He is the teacher who helped me", "He is the teacher where helped me"]'),

('RELATIVE_CLAUSES', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'This is the movie that we watched',
 '["This", "is", "the", "movie", "that", "we", "watched"]'),

-- HARD
('RELATIVE_CLAUSES', 'FILL_BLANK', 'HARD',
 'The woman ___ son won the prize is my neighbor',
 'whose',
 '["who", "which", "whose"]'),

('RELATIVE_CLAUSES', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct sentence',
 'This is the house where I grew up',
 '["This is the house which I grew up", "This is the house where I grew up", "This is the house who I grew up"]'),

('RELATIVE_CLAUSES', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'Students who study hard succeed',
 '["Students", "who", "study", "hard", "succeed"]');

INSERT INTO exercises
(grammar_topic, exercise_type, grammar_level, question, correct_answer, options)
VALUES

-- EASY
('REPORTED_SPEECH', 'FILL_BLANK', 'EASY',
 'She said that she ___ tired',
 'was',
 '["is", "was", "were"]'),

('REPORTED_SPEECH', 'MULTIPLE_CHOICE', 'EASY',
 'Choose the correct reported sentence',
 'He said that he liked coffee',
 '["He said that he likes coffee", "He said that he liked coffee", "He said that he like coffee"]'),

('REPORTED_SPEECH', 'FULL_SENTENCE', 'EASY',
 'Write a reported sentence using: I am happy',
 'She said that she was happy',
 '["She", "said", "that", "she", "was", "happy"]'),

-- MEDIUM
('REPORTED_SPEECH', 'FILL_BLANK', 'MEDIUM',
 'They said they ___ finished the work',
 'had',
 '["have", "had", "has"]'),

('REPORTED_SPEECH', 'MULTIPLE_CHOICE', 'MEDIUM',
 'Choose the correct reported sentence',
 'She told me that she was studying',
 '["She told me that she is studying", "She told me that she was studying", "She told me that she studies"]'),

('REPORTED_SPEECH', 'FULL_SENTENCE', 'MEDIUM',
 'Write a sentence using these words:',
 'He said that he would call later',
 '["He", "said", "that", "he", "would", "call", "later"]'),

-- HARD
('REPORTED_SPEECH', 'FILL_BLANK', 'HARD',
 'He said that he ___ never been there before',
 'had',
 '["has", "had", "have"]'),

('REPORTED_SPEECH', 'MULTIPLE_CHOICE', 'HARD',
 'Choose the correct reported sentence',
 'She explained that she had lost her keys',
 '["She explained that she lost her keys", "She explained that she had lost her keys", "She explained that she has lost her keys"]'),

('REPORTED_SPEECH', 'FULL_SENTENCE', 'HARD',
 'Write a sentence using these words:',
 'They said that they were waiting for us',
 '["They", "said", "that", "they", "were", "waiting", "for", "us"]');

COMMIT;