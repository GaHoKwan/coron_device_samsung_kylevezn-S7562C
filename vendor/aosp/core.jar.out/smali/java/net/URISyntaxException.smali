.class public Ljava/net/URISyntaxException;
.super Ljava/lang/Exception;
.source "URISyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1daba13138e5d7fbL


# instance fields
.field private index:I

.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "reason"

    .prologue
    .line 77
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 79
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_1
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URISyntaxException;->index:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "input"
    .parameter "reason"
    .parameter "index"

    .prologue
    .line 50
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_1
    const/4 v0, -0x1

    if-ge p3, v0, :cond_2

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 60
    :cond_2
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    .line 61
    iput p3, p0, Ljava/net/URISyntaxException;->index:I

    .line 62
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Ljava/net/URISyntaxException;->index:I

    return v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, reason:Ljava/lang/String;
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URISyntaxException;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
