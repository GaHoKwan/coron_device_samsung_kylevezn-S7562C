.class Lcom/android/phone/OutgoingCallBroadcaster$4;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$4;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$4;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1792
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$4;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1793
    return-void
.end method
