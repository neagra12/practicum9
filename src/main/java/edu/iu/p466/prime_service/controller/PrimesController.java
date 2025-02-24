package edu.iu.p466.prime_service.controller;

import edu.iu.p466.prime_service.service.IPrimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("/primes")

public class PrimesController {

   IPrimeService primesService;
@Autowired
    public PrimesController(IPrimeService primesService) {

        this.primesService = primesService;
    }

    @GetMapping("/{n}")
    public boolean isPrime(@PathVariable int n) {
        return primesService.isPrime(n);
    }
}
