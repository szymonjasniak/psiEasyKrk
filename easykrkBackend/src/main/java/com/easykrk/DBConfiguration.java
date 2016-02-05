package com.easykrk;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories
public class DBConfiguration {

    @Value("${db.host}")
    String host;

    @Value("${db.port}")
    String port;

    @Value("${db.database.name}")
    String dbName;

    @Value("${db.username}")
    String user;

    @Value("${db.password}")
    String password;

    @Bean
    public DataSource dataSource() {

	DataSourceBuilder dbSourceBuilder = DataSourceBuilder.create();

	String url = "jdbc:postgresql://" + host + ':' + port + '/' + dbName; // +"?sslmode=require";
	return dbSourceBuilder.url(url).username(user).password(password).build();
    }

}
