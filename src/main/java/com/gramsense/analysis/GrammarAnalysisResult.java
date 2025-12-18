package com.gramsense.analysis;

import com.gramsense.exercise.GrammarExercise;
import com.gramsense.exercise.GrammarType;

import java.util.List;

/**
 * @author Mehdi Kamali
 * @since 09/12/2025
 */
public class GrammarAnalysisResult {

    public GrammarType grammarType;
    public GrammarCorrection correction;
    public List<GrammarExample> examples;
    public List<GrammarExercise> exercises;
}
