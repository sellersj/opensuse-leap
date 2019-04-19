FROM opensuse/leap

RUN zypper --non-interactive install git-core which curl wget
