package com.gramsense.profile;

import com.gramsense.exercise.GrammarExerciseProvider;

/**
 * @author Mehdi Kamali
 * @since 17/12/2025
 */
public class UserProfileService {

    public UserProfileDataSource userProfileDataSource;
    public GrammarExerciseProvider grammarExerciseProvider;

    public UserProfile getUserProfile(long userId) {
        throw new UnsupportedOperationException("not supported yet.");
    }

    public UserProgress getUserProgress(UserProgressRequest userProgressRequest) {
        throw new UnsupportedOperationException("not supported yet.");
    }

    public StudyRoadMapResponse getStudyRoadMap(StudyRoadMapRequest studyRoadMapRequest) {
        throw new UnsupportedOperationException("not supported yet.");
    }
}
