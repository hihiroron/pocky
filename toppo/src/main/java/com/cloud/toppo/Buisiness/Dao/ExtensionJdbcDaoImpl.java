package com.cloud.toppo.Buisiness.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;

import com.cloud.toppo.Buisiness.Domain.ExtensionUser;


public class ExtensionJdbcDaoImpl extends JdbcDaoImpl{
	

		@Override
		protected List<UserDetails> loadUsersByUsername(String userName) {
			return getJdbcTemplate().query(getUsersByUsernameQuery(), new String[] { userName },
					new RowMapper<UserDetails>() {

						public UserDetails mapRow(ResultSet rs, int rowNum) throws SQLException {

							return new ExtensionUser(rs.getString("USER_ID"), rs.getString("password"),
									AuthorityUtils.NO_AUTHORITIES, rs.getString("USER_NAME"));
						}
					});
		}

		@Override
		protected UserDetails createUserDetails(String userName, UserDetails userFromUserQuery,
				List<GrantedAuthority> combienAuthorities) {

			ExtensionUser org = (ExtensionUser) userFromUserQuery;

			return new ExtensionUser(org.getUsername(), org.getPassword(), combienAuthorities, org.getName());
		}

}
