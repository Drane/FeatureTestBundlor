// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.prefabsoft.web;

import com.prefabsoft.domain.FakeDomainEntity;
import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(new FakeDomainEntityConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
    static class com.prefabsoft.web.ApplicationConversionServiceFactoryBean.FakeDomainEntityConverter implements Converter<FakeDomainEntity, String>  {
        public String convert(FakeDomainEntity fakeDomainEntity) {
            return new StringBuilder().append(fakeDomainEntity.getName()).toString();
        }
        
    }
    
}
