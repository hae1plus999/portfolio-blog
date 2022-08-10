package com.cos.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.model.RoleType;
import com.cos.blog.model.User;
import com.cos.blog.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Transactional(readOnly = true)
	public User userFind(String email) {
		User user = userRepository.findByEmail(email).orElseGet(()->{
			return new User();
		});
		return user;
	}
	
	@Transactional
	public void join(User user) {
		
		String rawPassword = user.getPassword();
		String encPassword = encoder.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRole(RoleType.USER);
		userRepository.save(user);
	}
	
	@Transactional
	public void userUpdate(int id, User user) {
		User persistance = userRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("회원을 찾을 수 없습니다.");
				});
		
		if(persistance.getOauth() == null || persistance.getOauth().equals("")) {
			String rawPassword = user.getPassword();
			String encPassword = encoder.encode(rawPassword);
			persistance.setPassword(encPassword);
			persistance.setEmail(user.getEmail());
		}

//		userRepository.save(persistance);
	}

}

//@Transactional(readOnly = true)
//public User login(User user) {
//	return userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
//}
