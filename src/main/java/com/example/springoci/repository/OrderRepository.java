package com.example.springoci.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

import com.example.springoci.model.Order;
@Repository
public interface OrderRepository extends JpaRepository<Order, Long> { 
    List <Order> findByUserId(Long userId);
}