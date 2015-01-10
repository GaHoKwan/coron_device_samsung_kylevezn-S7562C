.class Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$1;
.super Landroid/os/Handler;
.source "DoubleTapTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;

    #calls: Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->updateAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->access$000(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
