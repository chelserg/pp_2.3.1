package com.spring.mvc_hibernate.config;

import com.spring.mvc_hibernate.config.WebConfig;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import javax.servlet.Filter;
public class AppInit extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{WebConfig.class}; // Корневая конфигурация
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return null; // Нет дополнительных конфигураций для сервлетов
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"}; // Маппинг для DispatcherServlet
    }

    protected Filter[] getServletFilters() {
        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
        characterEncodingFilter.setEncoding("UTF-8");
        characterEncodingFilter.setForceEncoding(true);
        return new Filter[]{characterEncodingFilter};
    }
}