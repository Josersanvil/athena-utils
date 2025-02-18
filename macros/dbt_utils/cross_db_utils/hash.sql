{%- macro hash(field) -%}
  {{ return(adapter.dispatch('hash', 'dbt_utils') (field)) }}
{%- endmacro -%}


{%- macro athena__hash(field) -%}
    to_hex(sha256(to_utf8(cast({{field}} as {{dbt_utils.type_string()}}))))
{%- endmacro -%}
