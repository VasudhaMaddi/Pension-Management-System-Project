package com.cognizant.pensionManagementSystem.authorization.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.pensionManagementSystem.authorization.model.UserData;

/**
 * This repository interface is used for accessing user credentials table
 */
@Repository
public interface UserRepository extends JpaRepository<UserData, String> {

}
