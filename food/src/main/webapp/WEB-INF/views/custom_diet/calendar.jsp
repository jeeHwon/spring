<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="section" class="right_col">
    <div class="container">

  <h1 class="page-header">
    <i class="fa fa-calendar"></i> Bootstrap Calendar
  </h1>
  
  <div class="calendar" id="calendar">
    
    <!-- Calendar toolbar -->
    <div class="calendar-toolbar">
      
      <!-- Calendar "today" button -->
      <button data-toggle="calendar" data-action="today" class="btn btn-default">
        Today
      </button>
      
      <!-- Calendar "prev" button -->
      <button data-toggle="calendar" data-action="prev" class="btn btn-default">
        <i class="fa fa-chevron-left"></i>
      </button>
      
      <!-- Calendar "date-indicator" span -->
      <div class="calendar-current-date"
            data-day-format="MM/DD/YYYY"
            data-week-format="MM/DD/YYYY"
            data-month-format="MMMM, YYYY">
        (placeholder)
      </div>
      
      <!-- Calendar "next" button -->
      <button data-toggle="calendar" data-action="next" class="btn btn-default">
        <i class="fa fa-chevron-right"></i>
      </button>
      
      <div class="btn-group pull-right">
        
        <!-- Calendar "day" button -->
        <button data-toggle="calendar" data-action="day" class="btn btn-default">
          Day
        </button>
        
        <!-- Calendar "week" button -->
        <button data-toggle="calendar" data-action="week" class="btn btn-default">
          Week
        </button>
        
        <!-- Calendar "month" button -->
        <button data-toggle="calendar" data-action="month" class="btn btn-default">
          Month
        </button>
        
      </div>
      
    </div>
    
  </div>
  
</div>
</div>    
<script src="/food/resources/js/calendar.js"></script>
<<link href="/food/resources/css/calendar.css" rel="stylesheet">