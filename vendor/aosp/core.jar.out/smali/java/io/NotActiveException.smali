.class public Ljava/io/NotActiveException;
.super Ljava/io/ObjectStreamException;
.source "NotActiveException.java"


# static fields
.field private static final serialVersionUID:J = -0x36085fdb3abe1fffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
