.class final Lcom/android/mms/spam/SpamFilter$SpamFilterCache$1;
.super Ljava/lang/Object;
.source "SpamFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "Mms/SpamFilter"

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->fill()V

    .line 207
    const-string v0, "Mms/SpamFilter"

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method
