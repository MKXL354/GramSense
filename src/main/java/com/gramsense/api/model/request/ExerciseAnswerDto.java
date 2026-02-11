package com.gramsense.api.model.request;

import lombok.Getter;
import lombok.Setter;

/**
 * @author Mehdi Kamali
 * @since 11/02/2026
 */
@Getter
@Setter
public class ExerciseAnswerDto {

    private Long exerciseId;
    private String answer;
}
