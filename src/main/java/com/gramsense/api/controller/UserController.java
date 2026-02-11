package com.gramsense.api.controller;

import com.gramsense.api.model.DtoAssembler;
import com.gramsense.api.model.response.UserStatsResponseDto;
import com.gramsense.persistence.entity.UserStats;
import com.gramsense.persistence.entity.enumeration.GrammarLevel;
import com.gramsense.persistence.entity.enumeration.GrammarTopic;
import com.gramsense.persistence.repository.UserStatsRepository;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

/**
 * @author Mehdi Kamali
 * @since 11/02/2026
 */
@RestController
@RequestMapping("/api/users")
@RequiredArgsConstructor
public class UserController {

    private final UserStatsRepository userStatsRepository;
    private final DtoAssembler dtoAssembler;

    @GetMapping(path = "/{userId}/stats")
    @Transactional
    public UserStatsResponseDto getStats(@NotNull @PathVariable Long userId, @NotNull @RequestParam GrammarTopic grammarTopic, @NotNull @RequestParam GrammarLevel grammarLevel) {
        UserStats userStats = userStatsRepository.findByGrammarUserIdAndGrammarTopicAndGrammarLevel(userId, grammarTopic, grammarLevel).orElse(null);
        return dtoAssembler.toUserStatsResponseDto(userStats);
    }
}
