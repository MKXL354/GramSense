package com.gramsense.persistence.repository;

import com.gramsense.persistence.entity.GrammarUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author Mehdi Kamali
 * @since 11/02/2026
 */
@Repository
public interface GrammarUserRepository extends JpaRepository<GrammarUser, Long> {
}
