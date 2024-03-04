package com.bitc.user.service;

import org.springframework.stereotype.Service;

import com.bitc.user.mapper.UserMapper;
import com.bitc.user.vo.LoginDTO;
import com.bitc.user.vo.UserVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserMapper mapper;
	
	/**
	 * @param vo 
	 */
	public void signUp(UserVO vo) throws Exception{
		mapper.signUp(vo);
	}
	
	/**
	 * @param vo - 로그인 요청 처리에 필요한 정보를 저장하는 객체
	 * @return - 로그인으로 인증이 완료된 사용자 정보를 UserVO 객체에 저장하여 반환
	 */
	public UserVO signIn(LoginDTO dto) throws Exception{
		
		return mapper.signIn(dto);
	}

}











