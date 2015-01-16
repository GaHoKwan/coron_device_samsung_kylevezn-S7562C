.class public Lcom/sec/android/allshare/iface/message/AllShareEvent$FileReceiverEvent;
.super Ljava/lang/Object;
.source "AllShareEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/iface/message/AllShareEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileReceiverEvent"
.end annotation


# static fields
.field public static final EVENT_FILE_RECEIVER_COMPLECTED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_COMPLECTED"

.field public static final EVENT_FILE_RECEIVER_FAILED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_FAILED"

.field public static final EVENT_FILE_RECEIVER_PROGRESS:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_PROGRESS"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method
