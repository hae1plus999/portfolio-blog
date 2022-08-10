package com.cos.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.blog.model.Reply;

public interface ReplyRepository extends JpaRepository<Reply, Integer>{

//	@Query(value="INSERT INTO reply(userId, boardId, content, createDate VALUES(?1, ?2, ?3, now()", nativeQuery = true)
//	void mSave(ReplySaveRequestDto replySaveRequestDto);
	
}
