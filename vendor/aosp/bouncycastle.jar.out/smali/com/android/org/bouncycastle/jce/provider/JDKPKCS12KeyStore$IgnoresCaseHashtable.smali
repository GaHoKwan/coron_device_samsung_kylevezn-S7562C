.class Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;
.super Ljava/lang/Object;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoresCaseHashtable"
.end annotation


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private orig:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    .line 1604
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1601
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "alias"

    .prologue
    const/4 v2, 0x0

    .line 1640
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1642
    .local v0, k:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1647
    :goto_1
    return-object v2

    .line 1640
    .end local v0           #k:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1647
    .restart local v0       #k:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1608
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 1609
    .local v1, lower:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1610
    .local v0, k:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1612
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    return-void

    .line 1608
    .end local v0           #k:Ljava/lang/String;
    .end local v1           #lower:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "alias"

    .prologue
    const/4 v2, 0x0

    .line 1627
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1629
    .local v0, k:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1634
    :goto_1
    return-object v2

    .line 1627
    .end local v0           #k:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1634
    .restart local v0       #k:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method
