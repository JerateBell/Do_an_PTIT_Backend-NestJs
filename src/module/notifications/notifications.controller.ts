import { Controller, Get, Patch, Param, Query } from '@nestjs/common';
import { NotificationsService } from './notifications.service';
import { FilterNotificationsDto } from './dto/filter-notifications.dto';

@Controller('notifications')
export class NotificationsController {
  constructor(private readonly service: NotificationsService) {}

  @Get('admin')
  findAllAdmin(@Query() filter: FilterNotificationsDto) {
    return this.service.findAllAdmin(filter);
  }

  @Patch(':id/read')
  markRead(@Param('id') id: string) {
    return this.service.markRead(BigInt(id));
  }

  @Patch('read-all')
  markAllRead() {
    return this.service.markAllRead();
  }

  @Get('admin/unread-count')
  countUnread() {
    return this.service.countUnread();
  }
}


