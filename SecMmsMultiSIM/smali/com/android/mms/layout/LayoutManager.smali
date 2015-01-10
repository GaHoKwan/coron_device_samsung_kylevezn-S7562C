.class public Lcom/android/mms/layout/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/LayoutManager"

.field private static sInstance:Lcom/android/mms/layout/LayoutManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters()V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/android/mms/layout/LayoutManager;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    return-object v0
.end method

.method private getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;
    .locals 3
    .parameter "displayType"

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported display type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_0
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    iget-object v1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(Landroid/content/Context;I)V

    .line 64
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    iget-object v1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    const-string v0, "Mms/LayoutManager"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "Mms/LayoutManager"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    new-instance v0, Lcom/android/mms/layout/LayoutManager;

    invoke-direct {v0, p0}, Lcom/android/mms/layout/LayoutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    .line 79
    return-void
.end method

.method private initLayoutParameters()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 54
    const-string v0, "Mms/LayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v2}, Lcom/android/mms/layout/LayoutParameters;->getTypeDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v2}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v2}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    return-object v0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getType()I

    move-result v0

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 89
    const-string v0, "Mms/LayoutManager"

    const-string v1, "-> LayoutManager.onConfigurationChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters()V

    .line 91
    return-void
.end method
