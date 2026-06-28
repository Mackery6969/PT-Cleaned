@echo off
cd /d "%~dp0\.."
git config filter.stripextdate.clean "perl tools/strip-ext-date.pl"
git add --renormalize extensions
echo stripextdate filter configured.
