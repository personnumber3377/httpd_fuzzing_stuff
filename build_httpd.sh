#!/bin/bash


# https://osdn.net/projects/sfnet_pcre/downloads/pcre/8.40/pcre-8.40.tar.gz
# https://dlcdn.apache.org//apr/apr-1.7.4.tar.gz
# https://dlcdn.apache.org//apr/apr-util-1.6.3.tar.gz
# https://github.com/nghttp2/nghttp2.git # (use git clone)
# https://github.com/apache/httpd.git (use git clone) (this is the main server code)



#PREFIX="${PREFIX:-/usr/local/apache_clean}" # We don't really want this.

# mkdir httpd_install/ # Create this directory.

export PREFIX=$PWD/httpd_install/



export CC=/home/oof/AFLplusplus/afl-clang-fast
export CXX=/home/oof/AFLplusplus/afl-clang-fast++
export CFLAGS="-fsanitize=address,undefined -g" # Enable sanitizers and debug symbols.
export CXXFLAGS="-fsanitize=address,undefined -g" # Enable sanitizers and debug symbols.
export AFL_USE_ASAN=1 # Use address sanitizer


PREFIX=$PWD/httpd_install/

CC=/home/oof/AFLplusplus/afl-clang-fast
CXX=/home/oof/AFLplusplus/afl-clang-fast++
CFLAGS="-fsanitize=address,undefined -g"
CXXFLAGS="-fsanitize=address,undefined -g"
AFL_USE_ASAN=1

echo "This is the value of PREFIX:"
echo $PREFIX






# Done for now



# echo "[+] Dependencies compiled succesfully!!!"




# [+] Using the following paths
# /home/oof/work/better_fuzzer/apr-1.7.4
# /home/oof/work/better_fuzzer/apr-util-1.6.3
# /home/oof/work/better_fuzzer/nghttp2
# /home/oof/work/better_fuzzer/pcre-8.40

apr=/home/oof/work/better_fuzzer/apr-1.7.4
aprutil=/home/oof/work/better_fuzzer/apr-util-1.6.3
nghttp=/home/oof/work/better_fuzzer/nghttp2
pcre=/home/oof/work/better_fuzzer/pcre-8.40


# These are the compiler flags used in https://securitylab.github.com/research/fuzzing-apache-1/

# CC=afl-clang-fast CXX=afl-clang-fast++ CFLAGS="-g -fsanitize=address,undefined -fno-sanitize-recover=all" CXXFLAGS="-g -fsanitize=address,undefined -fno-sanitize-recover=all" LDFLAGS="-fsanitize=address,undefined -fno-sanitize-recover=all -lm" ./configure --prefix='/home/user/httpd-trunk/install' --with-included-apr --enable-static-support --enable-mods-static=few --disable-pie --enable-debugger-mode --with-mpm=prefork --enable-negotiation=static --enable-auth-form=static --enable-session=static --enable-request=static --enable-rewrite=static --enable-auth_digest=static --enable-deflate=static --enable-brotli=static --enable-crypto=static --with-crypto --with-openssl --enable-proxy_html=static --enable-xml2enc=static --enable-cache=static --enable-cache-disk=static --enable-data=static --enable-substitute=static --enable-ratelimit=static --enable-dav=static





# This was the original thing.

#cd httpd-2*   
#LIBS="-L$apr/.libs -L$aprutil/.libs -L$pcre/.libs -L$nghttp/lib/" CFLAGS=" $CFLAGS -I$nghttp/lib/includes -march=skylake -g -ggdb -fno-builtin -fno-inline" LDFLAGS="$CFLAGS" ./configure --enable-unixd --disable-pie --enable-mods-static=few --prefix="$PREFIX" --with-mpm=event --enable-http2 --with-apr=$apr --with-apr-util=$aprutil --with-nghttp2=$nghttp --enable-nghttp2-staticlib-deps --with-pcre=$pcre/pcre-config && make -j$(nproc)





# --enable-negotiation=static --enable-auth-form=static --enable-session=static --enable-request=static --enable-rewrite=static --enable-auth_digest=static --enable-deflate=static --enable-brotli=static --enable-crypto=static --with-crypto --with-openssl --enable-proxy_html=static --enable-xml2enc=static --enable-cache=static --enable-cache-disk=static --enable-data=static --enable-substitute=static --enable-ratelimit=static --enable-dav=static

cd httpd
#LIBS="-L$apr/.libs -L$aprutil/.libs -L$pcre/.libs -L$nghttp/lib/" CFLAGS=" $CFLAGS -I$nghttp/lib/includes -g -ggdb -fno-builtin -fno-inline" LDFLAGS="$CFLAGS" ./configure --enable-unixd --disable-pie --enable-mods-static=few --prefix="$PREFIX" --with-mpm=event --enable-http2 --with-apr=$apr --with-apr-util=$aprutil --with-nghttp2=$nghttp --enable-nghttp2-staticlib-deps --with-pcre=$pcre/pcre-config --enable-negotiation=static --enable-auth-form=static --enable-session=static --enable-request=static --enable-rewrite=static --enable-auth_digest=static --enable-deflate=static --enable-brotli=static --enable-crypto=static --with-crypto --with-openssl --enable-proxy_html=static --enable-xml2enc=static --enable-cache=static --enable-cache-disk=static --enable-data=static --enable-substitute=static --enable-ratelimit=static --enable-dav=static && make -j$(nproc)


# /home/oof/work/better_fuzzer/httpd_install/bin



# /home/oof/work/better_fuzzer/apr-1.7.4
# /home/oof/work/better_fuzzer/apr-1.7.4



#./buildconf --with-apr=/home/oof/work/better_fuzzer/httpd_install/bin/apr-1-config

./buildconf --with-apr=/home/oof/work/better_fuzzer/apr-1.7.4/ --with-apr-util=/home/oof/work/better_fuzzer/apr-util-1.6.3/

# LIBS="-L$apr/.libs -L$aprutil/.libs -L$pcre/.libs -L$nghttp/lib/" CFLAGS=" $CFLAGS -I$nghttp/lib/includes -g -ggdb -fno-builtin -fno-inline" LDFLAGS="$CFLAGS" ./configure --enable-unixd --disable-pie --enable-mods-static=few --prefix="$PREFIX" --with-mpm=event --enable-http2 --with-apr=$apr --with-apr-util=$aprutil --with-nghttp2=$nghttp --enable-nghttp2-staticlib-deps --with-pcre=$pcre/pcre-config --enable-negotiation=static --enable-auth-form=static --enable-session=static --enable-request=static --enable-rewrite=static --enable-auth_digest=static --enable-deflate=static --enable-brotli=static --enable-crypto=static --with-crypto --with-openssl --enable-proxy_html=static --enable-xml2enc=static --enable-cache=static --enable-cache-disk=static --enable-data=static --enable-substitute=static --enable-ratelimit=static --enable-dav=static


# /home/oof/work/better_fuzzer/httpd_install/bin


# I had to remove crypto , because I got quite a few compilation errors.

LIBS="-L$apr/.libs -L$aprutil/.libs -L$pcre/.libs -L$nghttp/lib/" CFLAGS=" $CFLAGS -I$nghttp/lib/includes -g -ggdb -fno-builtin -fno-inline" LDFLAGS="$CFLAGS" ./configure --enable-unixd --disable-pie --enable-mods-static=few --prefix="$PREFIX" --with-mpm=event --enable-http2 --with-apr=$apr --with-apr-util=$aprutil --with-nghttp2=$nghttp --enable-nghttp2-staticlib-deps --with-pcre=$pcre/pcre-config --enable-negotiation=static --enable-auth-form=static --enable-session=static --enable-request=static --enable-rewrite=static --enable-auth_digest=static --enable-deflate=static --enable-brotli=static --with-openssl --enable-proxy_html=static --enable-xml2enc=static --enable-cache=static --enable-cache-disk=static --enable-data=static --enable-substitute=static --enable-ratelimit=static --enable-dav=static



make -j$(nproc) # Build



