if exists("b:current_syntax")
  finish
end

syn case ignore

syn match redisStringCommand "\(set\|get\)"

syn region redisString start=/\v"/ skip=/\v\\./ end=/\v"/

hi def link redisStringCommand Keyword

hi def link redisString String

let b:current_syntax = "redis"
