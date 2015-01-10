.class Lcom/sec/android/app/contacts/util/MotionCallManager$1;
.super Ljava/lang/Object;
.source "MotionCallManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/MotionCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$1;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 58
    .local v0, motion:I
    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$1;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$000(Lcom/sec/android/app/contacts/util/MotionCallManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$1;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->call()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method
