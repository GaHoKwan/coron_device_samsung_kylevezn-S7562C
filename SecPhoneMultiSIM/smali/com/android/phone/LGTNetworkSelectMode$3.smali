.class Lcom/android/phone/LGTNetworkSelectMode$3;
.super Ljava/lang/Object;
.source "LGTNetworkSelectMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSelectMode;->networkSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSelectMode;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSelectMode;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMode$3;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 225
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "networkSelectDialog() - negativebtn click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 227
    return-void
.end method
