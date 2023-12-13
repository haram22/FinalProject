package com.crud.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;
    public int insertBoard(BoardVO vo) {
        String sql = "insert into APPLE (name, weight, content, color, image, camera, price) values ('"
                + vo.getName() + "', '"
                + vo.getWeight() + "', '"
                + vo.getContent() + "', '"
                + vo.getColor() + "', '"
                + vo.getImage() + "', '"
                + vo.getCamera() + "', '"
                + vo.getPrice() + "')";
        return jdbcTemplate.update(sql);
    }

    // 글 삭제
    public int deleteBoard(int seq) {
        String sql = "delete from APPLE where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo) {
        String sql = "update APPLE set name='" + vo.getName() + "', "
                + "price='" + vo.getPrice() + "', "
                + "content='" + vo.getContent() + "', "
                + "color='" + vo.getColor() + "', "
                + "image='" + vo.getImage() + "', "
                + "camera='" + vo.getCamera() + "', "
                + "weight='" + vo.getWeight() + "' where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }

    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            try {
                vo.setSeq(rs.getInt("seq"));
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            vo.setName(rs.getString("name"));
            vo.setPrice(rs.getString("price"));
            vo.setContent(rs.getString("content"));
            vo.setWeight(rs.getString("weight"));
            vo.setImage(rs.getString("image"));
            vo.setCamera(rs.getInt("camera"));
            vo.setColor(rs.getString("color"));
            vo.setRegdate(rs.getTimestamp("regdate"));
            return vo;
        }
    }

    public BoardVO getBoard(int seq) {
        String sql = "select * from APPLE where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList() {
        String sql = "select * from APPLE order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }
}
