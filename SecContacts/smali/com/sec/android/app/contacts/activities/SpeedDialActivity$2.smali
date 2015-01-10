.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;
.super Landroid/os/Handler;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #calls: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->FreshView()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    .line 277
    return-void
.end method
