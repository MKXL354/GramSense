package com.gramsense.config;

import com.gramsense.api.service.GrammarEvaluationService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.Duration;

/**
 * @author Mehdi Kamali
 * @since 11/02/2026
 */
@Configuration
public class GrammarEvaluationConfig {

    @Bean
    public GrammarEvaluationService grammarEvaluationService() {
        return requestDto -> {
            try {
                Thread.sleep(Duration.ofMinutes(3));
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            throw new RuntimeException();
        };
    }
}

