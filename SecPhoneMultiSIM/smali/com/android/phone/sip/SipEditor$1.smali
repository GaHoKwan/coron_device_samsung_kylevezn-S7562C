.class Lcom/android/phone/sip/SipEditor$1;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipEditor;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$1;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$1;->this$0:Lcom/android/phone/sip/SipEditor;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/sip/SipEditor;->mDeleteClicked:Z
    invoke-static {v0, v1}, Lcom/android/phone/sip/SipEditor;->access$302(Lcom/android/phone/sip/SipEditor;Z)Z

    .line 241
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$1;->this$0:Lcom/android/phone/sip/SipEditor;

    #calls: Lcom/android/phone/sip/SipEditor;->setRemovedProfileAndFinish()V
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->access$400(Lcom/android/phone/sip/SipEditor;)V

    .line 242
    return-void
.end method
