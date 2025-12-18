package com.gramsense.profile;

import com.gramsense.exercise.GrammarType;

import java.time.LocalDate;

/**
 * @author Mehdi Kamali
 * @since 17/12/2025
 */
public class UserProgressRequest {

    public long userId;
    public GrammarType grammarType;
    public LocalDate from;
    public LocalDate to;
    public UserProgressResolution resolution;
}
