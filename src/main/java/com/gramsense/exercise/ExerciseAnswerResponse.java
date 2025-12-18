package com.gramsense.exercise;

import com.gramsense.analysis.GrammarExample;

import java.util.List;

/**
 * @author Mehdi Kamali
 * @since 17/12/2025
 */
public class ExerciseAnswerResponse {

    public boolean isCorrect;
    public UserExerciseAnswer correctAnswer;
    public List<GrammarExample> examples;
}
