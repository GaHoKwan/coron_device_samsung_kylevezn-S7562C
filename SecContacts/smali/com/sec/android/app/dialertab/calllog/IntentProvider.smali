.class public abstract Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .parameter "adapter"
    .parameter "position"
    .parameter "id"
    .parameter "groupSize"
    .parameter "number"

    .prologue
    .line 194
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$8;

    invoke-direct {v0, p0, p1, p5, p4}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;ILjava/lang/String;I)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .parameter "number"

    .prologue
    .line 44
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProviderLGT(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .parameter "number"
    .parameter "CallType"

    .prologue
    .line 104
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReturnVoicemailVZWIntentProvider(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .parameter "number"
    .parameter "msgId"

    .prologue
    .line 92
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$3;

    invoke-direct {v0, p1}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
