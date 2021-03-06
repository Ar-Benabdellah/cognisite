package com.cognicap.site.formatter.support;

import java.util.List;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.AnnotationFormatterFactory;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.support.FormattingConversionServiceFactoryBean;
import org.springframework.stereotype.Service;

import com.cognicap.site.repository.support.NullRestriction.NullRestrictionKind;

/**
 * This class gather all the {@link Converter}, {@link DiscoverableFormatter} and {@link AnnotationFormatterFactory} and add them in the
 * {@link FormattingConversionService}
 *
 * @see Converter
 * @see DiscoverableFormatter
 * @see AnnotationFormatterFactory
 * @see http://static.springsource.org/spring/docs/3.0.x/spring-framework-reference/html/validation.html#format-FormatterRegistry-SPI
 */
@Service("customFormattingConversionService")
public class CustomFormattingConversionServiceFactory extends FormattingConversionServiceFactoryBean {
    private static final Logger log = Logger.getLogger(CustomFormattingConversionServiceFactory.class);

    @Autowired
    private List<Converter<?, ?>> converters;

    @Autowired
    private List<DiscoverableFormatter<?>> formatters;

    @Autowired
    private List<AnnotationFormatterFactory<?>> annotationsFormatters;

    @Autowired
    private MessageSource messageSource;

    protected void installFormatters(FormatterRegistry registry) {
        super.installFormatters(registry);
        addConverters(registry);
        addAnnotationFormatters(registry);
        addFormatters(registry);
        addEnumFormatters(registry, //
                NullRestrictionKind.class);
    }

    private void addConverters(FormatterRegistry registry) {
        for (Converter<?, ?> converter : converters) {
            if (log.isDebugEnabled()) {
                log.debug("Registering converter " + converter.toString());
            }
            registry.addConverter(converter);
        }
    }

    private void addFormatters(FormatterRegistry registry) {
        for (DiscoverableFormatter<?> formatter : formatters) {
            if (log.isDebugEnabled()) {
                log.debug("Registering formatter " + formatter.getTarget().getSimpleName());
            }
            registry.addFormatterForFieldType(formatter.getTarget(), formatter);
        }
    }

    private void addAnnotationFormatters(FormatterRegistry registry) {
        for (AnnotationFormatterFactory<?> annotationsFormatter : annotationsFormatters) {
            if (log.isDebugEnabled()) {
                log.debug("Registering annotation formatter " + annotationsFormatter.getClass().getSimpleName());
            }
            registry.addFormatterForFieldAnnotation(annotationsFormatter);
        }
    }

    private void addEnumFormatters(FormatterRegistry registry, Class<?>... classes) {
        for (Class<?> clazz : classes) {
            if (log.isDebugEnabled()) {
                log.debug("Registering default enum formatter for " + clazz.getSimpleName());
            }
            registry.addFormatterForFieldType(clazz, new DefaultEnumFormatter(clazz, messageSource));
        }
    }
}
