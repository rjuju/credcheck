LOAD 'credcheck';
--
--reset all settings
--
SET credcheck.username_min_length TO DEFAULT;
SET credcheck.username_min_special TO DEFAULT;
SET credcheck.username_min_upper TO DEFAULT;
SET credcheck.username_min_upper TO DEFAULT;
SET credcheck.username_min_digit TO DEFAULT;
SET credcheck.username_contain_password TO DEFAULT;
SET credcheck.username_ignore_case TO DEFAULT;
SET credcheck.username_contain TO DEFAULT;
SET credcheck.username_not_contain TO DEFAULT;
SET credcheck.username_min_repeat TO DEFAULT;
SET credcheck.password_min_length TO DEFAULT;
SET credcheck.password_min_special TO DEFAULT;
SET credcheck.password_min_upper TO DEFAULT;
SET credcheck.password_min_upper TO DEFAULT;
SET credcheck.password_min_digit TO DEFAULT;
SET credcheck.password_contain_username TO DEFAULT;
SET credcheck.password_ignore_case TO DEFAULT;
SET credcheck.password_contain TO DEFAULT;
SET credcheck.password_not_contain TO DEFAULT;
SET credcheck.password_min_repeat TO DEFAULT;
SET credcheck.password_reuse_history = 0;
SET credcheck.password_reuse_interval = 0;

-- VALID UNTIL clause checks
SET credcheck.password_valid_until TO 4;
-- fail, the VALID UNTIL clause must be present
CREATE USER aaa PASSWORD 'DummY';
-- Success, the VALID UNTIL clause is present and respect the delay
CREATE USER aaa PASSWORD 'DummY' VALID UNTIL '2050-01-01 00:00:00';
-- fail, the VALID UNTIL clause does not respect the delay
ALTER USER aaa PASSWORD 'DummY2' VALID UNTIL '2022-01-01 00:00:00';
-- Clear the user
DROP USER aaa;