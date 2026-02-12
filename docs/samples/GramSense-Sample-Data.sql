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

COMMIT;