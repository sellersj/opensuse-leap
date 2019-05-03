FROM opensuse/leap

RUN zypper --non-interactive install which curl wget \
    gcc curl-devel make autoconf gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker vim
RUN zypper --non-interactive source-install git
