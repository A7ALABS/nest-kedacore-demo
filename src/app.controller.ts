import { Controller, Get, Req } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get('/health')
  async k8s(@Req() req) {
    return 'Working - 0.0.1'
  }
}
