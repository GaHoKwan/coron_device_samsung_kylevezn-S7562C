.class public Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;
.super Ljava/lang/Object;
.source "JDKPKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private useDEREncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public isUseDEREncoding()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    return v0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "outputStream"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    .line 32
    return-void
.end method

.method public setPassword([C)V
    .locals 1
    .parameter "password"

    .prologue
    .line 36
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 37
    return-void
.end method

.method public setProtectionParameter(Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0
    .parameter "protectionParameter"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 42
    return-void
.end method

.method public setUseDEREncoding(Z)V
    .locals 0
    .parameter "useDEREncoding"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    .line 47
    return-void
.end method
