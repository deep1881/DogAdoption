package com.example.demo.Repo;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Dog;

public interface DogRepo extends CrudRepository<Dog, Integer> {

}
