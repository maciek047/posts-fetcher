package com.me.postfetcher.service

import arrow.core.Either
import arrow.core.computations.either
import com.me.postfetcher.AppError
import com.me.postfetcher.client.Client
import com.me.postfetcher.domain.Post
import java.time.Instant

const val GET_POSTS_URL = "https://jsonplaceholder.typicode.com/posts"
const val POST_FILE_EXTENSION = ".json"

class PostsFetcher  (private val client: Client, private val fileService: FileService) {

    suspend fun fetchPosts() : Either<AppError, String> =
        either {
            val posts: List<Post> = client.getObjectList<Post>(GET_POSTS_URL).bind()
            fileService.saveObjectsToFiles(
                objects = posts,
                filePath  = "posts-${Instant.now().toEpochMilli()}",
                fileExtension = POST_FILE_EXTENSION
            ).bind()
        }
}
