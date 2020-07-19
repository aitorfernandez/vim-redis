if exists("b:current_syntax")
  finish
end

syn case ignore

syn match redisStringCommand /\<\%(get\|set\)\>/
syn match redisHashCommand   /\<\%(hget\|hset\)\>/
syn match redisSetCommand    /\<\%(sadd\|smembers\)\>/

syn region redisString start=/\v"/ skip=/\v\\./ end=/\v"/

hi def link redisStringCommand Keyword

hi def link redisString String
hi def link redisHashCommand String
hi def link redisSetCommand String

let b:current_syntax = "redis"
