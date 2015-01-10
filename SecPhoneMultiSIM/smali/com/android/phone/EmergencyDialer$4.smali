.class Lcom/android/phone/EmergencyDialer$4;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1128
    if-nez p2, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/EmergencyDialer;->placeCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$200(Lcom/android/phone/EmergencyDialer;I)V

    .line 1134
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1135
    return-void

    .line 1130
    :cond_1
    if-ne p2, v1, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    #calls: Lcom/android/phone/EmergencyDialer;->placeCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$200(Lcom/android/phone/EmergencyDialer;I)V

    goto :goto_0
.end method
