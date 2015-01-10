.class Lcom/sec/android/app/contacts/AnimationAdapter$1;
.super Landroid/os/Handler;
.source "AnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/AnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/AnimationAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/AnimationAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter$1;->this$0:Lcom/sec/android/app/contacts/AnimationAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter$1;->this$0:Lcom/sec/android/app/contacts/AnimationAdapter;

    #calls: Lcom/sec/android/app/contacts/AnimationAdapter;->startAnimation()Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/AnimationAdapter;->access$000(Lcom/sec/android/app/contacts/AnimationAdapter;)Z

    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    return-void
.end method
