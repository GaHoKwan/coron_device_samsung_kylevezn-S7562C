.class Lcom/android/phone/NetworkSetting$11;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$11;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$11;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 967
    return-void
.end method
