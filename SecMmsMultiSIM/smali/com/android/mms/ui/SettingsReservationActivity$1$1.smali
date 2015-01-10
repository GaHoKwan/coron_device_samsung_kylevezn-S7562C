.class Lcom/android/mms/ui/SettingsReservationActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SettingsReservationActivity$1;->onTimeSet(Landroid/widget/TimePicker;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SettingsReservationActivity$1;

.field final synthetic val$hourOfDayFinal:I

.field final synthetic val$minuteFinal:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SettingsReservationActivity$1;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$1;

    iput p2, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->val$hourOfDayFinal:I

    iput p3, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->val$minuteFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 362
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$1;

    iget-object v1, v1, Lcom/android/mms/ui/SettingsReservationActivity$1;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I
    invoke-static {v1}, Lcom/android/mms/ui/SettingsReservationActivity;->access$300(Lcom/android/mms/ui/SettingsReservationActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$1;

    iget-object v2, v2, Lcom/android/mms/ui/SettingsReservationActivity$1;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I
    invoke-static {v2}, Lcom/android/mms/ui/SettingsReservationActivity;->access$400(Lcom/android/mms/ui/SettingsReservationActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$1;

    iget-object v3, v3, Lcom/android/mms/ui/SettingsReservationActivity$1;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I
    invoke-static {v3}, Lcom/android/mms/ui/SettingsReservationActivity;->access$500(Lcom/android/mms/ui/SettingsReservationActivity;)I

    move-result v3

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->val$hourOfDayFinal:I

    iget v5, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->val$minuteFinal:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SettingsReservationActivity$1;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    #calls: Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->access$600(Lcom/android/mms/ui/SettingsReservationActivity;J)V

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$1$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SettingsReservationActivity$1;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    #calls: Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->access$700(Lcom/android/mms/ui/SettingsReservationActivity;J)Z

    .line 365
    return-void
.end method
