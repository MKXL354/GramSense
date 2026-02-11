package com.gramsense.api.controller;

import com.gramsense.api.model.DtoAssembler;
import com.gramsense.api.model.request.LoginRequestDto;
import com.gramsense.api.model.response.LoginResponseDto;
import com.gramsense.api.model.response.UserStatsResponseDto;
import com.gramsense.api.service.JwtService;
import com.gramsense.persistence.entity.GrammarUser;
import com.gramsense.persistence.entity.UserStats;
import com.gramsense.persistence.entity.enumeration.GrammarLevel;
import com.gramsense.persistence.entity.enumeration.GrammarTopic;
import com.gramsense.persistence.repository.GrammarUserRepository;
import com.gramsense.persistence.repository.UserStatsRepository;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * @author Mehdi Kamali
 * @since 11/02/2026
 */
@RestController
@RequestMapping("/api/users")
@RequiredArgsConstructor
public class UserController {

    private final GrammarUserRepository grammarUserRepository;
    private final UserStatsRepository userStatsRepository;
    private final JwtService jwtService;
    private final DtoAssembler dtoAssembler;

    @PostMapping(path = "/login")
    @Transactional
    public LoginResponseDto login(@Valid @RequestBody LoginRequestDto requestDto, HttpServletResponse response) {
        GrammarUser user = grammarUserRepository.findByUsername(requestDto.getUsername()).orElseThrow();
        if (!user.getPassword().equals(requestDto.getPassword())) {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return null;
        }
        String token = jwtService.generateToken(Map.of("userId", user.getId()));
        LoginResponseDto loginResponseDto = new LoginResponseDto();
        loginResponseDto.setToken(token);
        return loginResponseDto;
    }

    @GetMapping(path = "/{userId}/stats")
    @Transactional
    public UserStatsResponseDto getUserStats(@NotNull @PathVariable Long userId, @NotNull @RequestParam GrammarTopic grammarTopic, @NotNull @RequestParam GrammarLevel grammarLevel) {
        UserStats userStats = userStatsRepository.findByGrammarUserIdAndGrammarTopicAndGrammarLevel(userId, grammarTopic, grammarLevel).orElse(null);
        return dtoAssembler.toUserStatsResponseDto(userStats);
    }
}
