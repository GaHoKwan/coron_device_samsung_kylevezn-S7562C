.class public Ljava/io/CharConversionException;
.super Ljava/io/IOException;
.source "CharConversionException.java"


# static fields
.field private static final serialVersionUID:J = -0x78759ce22aa3ec97L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
