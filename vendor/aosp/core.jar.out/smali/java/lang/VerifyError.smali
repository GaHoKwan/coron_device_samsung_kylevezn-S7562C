.class public Ljava/lang/VerifyError;
.super Ljava/lang/LinkageError;
.source "VerifyError.java"


# static fields
.field private static final serialVersionUID:J = 0x612bf7b3861810e1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
