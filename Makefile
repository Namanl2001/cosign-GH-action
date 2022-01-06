.PHONY: docker-get-digest

docker-get-digest: 
	@docker buildx imagetools inspect --raw ghcr.io/namanl2001/kyverno:v1 | perl -pe 'chomp if eof' | openssl dgst -sha256 | sed 's/^.* //'