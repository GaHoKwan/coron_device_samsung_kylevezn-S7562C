.class public Ljava/util/ServiceConfigurationError;
.super Ljava/lang/Error;
.source "ServiceConfigurationError.java"


# static fields
.field private static final serialVersionUID:J = 0x436c61726121L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method
