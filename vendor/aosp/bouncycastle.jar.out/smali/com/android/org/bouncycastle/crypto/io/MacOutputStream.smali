.class public Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MacOutputStream.java"


# instance fields
.field protected mac:Lcom/android/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V
    .locals 0
    .parameter "stream"
    .parameter "mac"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 20
    return-void
.end method


# virtual methods
.method public getMac()Lcom/android/org/bouncycastle/crypto/Mac;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 26
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 27
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 36
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 37
    return-void
.end method
