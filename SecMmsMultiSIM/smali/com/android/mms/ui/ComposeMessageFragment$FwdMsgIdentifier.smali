.class Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FwdMsgIdentifier"
.end annotation


# static fields
.field public static final MSG_TYPE_MMS:I = 0x2

.field public static final MSG_TYPE_NONE:I = -0x1

.field public static final MSG_TYPE_SMS:I = 0x1

.field public static final MSG_TYPE_WPM:I = 0x3


# instance fields
.field private msgId:J

.field private msgType:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 17410
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17411
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->msgId:J

    .line 17412
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->msgType:I

    .line 17413
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;JI)V
    .locals 0
    .parameter
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 17415
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17416
    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->msgId:J

    .line 17417
    iput p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->msgType:I

    .line 17418
    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    .prologue
    .line 17421
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->msgId:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 17424
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->msgType:I

    return v0
.end method

.method public setMsgId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 17427
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->msgId:J

    .line 17428
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 17430
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$FwdMsgIdentifier;->msgType:I

    .line 17431
    return-void
.end method
