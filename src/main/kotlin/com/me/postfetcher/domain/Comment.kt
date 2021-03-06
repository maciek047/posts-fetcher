package com.me.postfetcher.domain

import kotlinx.serialization.Serializable

@Serializable
data class Comment (
    val postId: Int,
    val id: Int,
    val name: String,
    val email: String,
    val body: String
)
